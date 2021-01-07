import click
import re
from pathlib import Path

@click.command()
@click.option("--mode", type=click.STRING, help="Options: unsplit (inside the asm directory), split (inside the include directory), all", default='all')
@click.option("--delete-unused", is_flag=True)
def main(mode, delete_unused):
    if mode == 'all':
        cleanup_unsplit_asm(delete_unused)
        cleanup_include_asm(delete_unused)
    elif mode == 'unsplit':
        cleanup_unsplit_asm(delete_unused)
    elif mode == 'split':
        cleanup_include_asm(delete_unused)
    else:
        print(f"Unknown mode: {mode}, Options: unsplit (inside the asm directory), split (inside the include directory), all")

def cleanup_unsplit_asm(delete_unused):
    used_asm_re = re.compile(r'\$\(BUILD_DIR\)\/asm\/([^.]+)\.o')
    existing_base_asm_re = re.compile(r'asm\/([^.]+)\.s')
    used_asms = set(used_asm_re.findall(Path('obj_files.mk').read_text()))
    found_unused_asms = 0
    for existing_asm_path in Path('asm').glob('**/*.s'):
        match = existing_base_asm_re.match(str(existing_asm_path).replace('\\','/'))
        if match:
            existing_asm = match.group(1)
            if not existing_asm in used_asms:
                found_unused_asms += 1
                if delete_unused:
                    existing_asm_path.unlink()
    if found_unused_asms == 0:
        print('no unused asm found in unsplit files')
    elif delete_unused:
        print(f'found and deleted {found_unused_asms} asm files in unsplit files')
    else:
        print(f'found {found_unused_asms} unused asm files in unsplit files, delete with --delete-unused flag')


def cleanup_include_asm(delete_unused):
    asm_func_include_re = re.compile(r'".*(\\|/)(?P<fname>[^\\/]+\.s)"')
    used_asm_files = set()
    for cpp_file in Path('src').glob('**/*.cpp'):
        allfound = asm_func_include_re.finditer(cpp_file.read_text())
        used_asm_files.update((match.group('fname') for match in allfound))
    for cpp_file in Path('libs').glob('**/*.cpp'):
        allfound = asm_func_include_re.finditer(cpp_file.read_text())
        used_asm_files.update((match.group('fname') for match in allfound))
    found_unused_asms = 0
    for asm_path in Path('include').glob('**/*.s'):
        asm_file = asm_path.parts[-1]
        if not asm_file in used_asm_files:
            found_unused_asms += 1
            if delete_unused:
                asm_path.unlink()
    if found_unused_asms == 0:
        print('no unused asm found in already split files')
    elif delete_unused:
        print(f'found and deleted {found_unused_asms} asm files in already split files')
    else:
        print(f'found {found_unused_asms} unused asm files in already split files, delete with --delete-unused flag')


if __name__ == "__main__":
    main()