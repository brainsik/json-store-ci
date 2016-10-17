# encoding: utf-8
from distutils.core import setup
import os.path

version = 'devel'
version_txt = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                           'json_store', 'version.txt')
if os.path.exists(version_txt):
    with open(version_txt) as v:
        version = v.readline().strip()

package_info = dict(
    name='json-store',
    version=version,
    packages=['json_store'],
    scripts=['bin/shelve2json.py'],
    description="A shelve-like store using JSON serialization.",
    long_description="JSON store is a simple replacement for shelve. It writes"
                     " JSON serialized files, accepts unicode keys, and tracks"
                     " whether the store has been changed since last sync.",
    author='jeremy avnet',
    author_email='brainsik-code@theory.org',
    license='MIT License',
    url='https://github.com/brainsik/json-store',
    download_url='http://pypi.python.org/packages/source'
                 '/j/json-store/json-store-{}.tar.gz'.format(version),
    classifiers=['Development Status :: 5 - Production/Stable',
                 'Intended Audience :: Developers',
                 'License :: OSI Approved :: MIT License',
                 'Operating System :: OS Independent',
                 'Programming Language :: Python :: 2.6',
                 'Programming Language :: Python :: 2.7'],
    package_data={
        'json_store': ['version.txt'],
    },
)


if __name__ == '__main__':
    setup(**package_info)
