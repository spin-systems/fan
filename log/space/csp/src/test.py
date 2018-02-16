# DRAFT

from pathlib import Path

csp_log = Path(__file__) / '..' / '..' / 'log'
print(csp_log.resolve())
