# Traitlet configuration file for jupyter-notebook.

c.ServerProxy.servers = {
    'openrefine': {
        'command': ['sleep', '1d'],
        'port': 3333,
        'timeout': 60,
        'launcher_entry': {
            'enabled': True,
            'title': 'OpenRefine Session',
        },
    },
}
