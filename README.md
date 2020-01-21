# eartifacts

A small, informal museum of musical artifacts.

## how to build

eartifacts uses [Zola](https://www.getzola.org/) for static website generation.

1. [Install Zola][install-zola].
2. Clone the eartifacts repo, like so:
   `git clone https://gitlab.com/eartifacts/eartifacts.gitlab.io.git`.
3. Change your working directory to the root of the cloned repo:
   `cd eartifacts`.
4. `zola serve`.
5. Navigate to `http://localhost:1111/` in your browser.

### scores

If you want to build the scores yourself, the [build_ly.sh](build_ly.sh) script
can be run while in the directory of `*.ly` files that you want to build:

```bash
build_ly.sh *.ly
```

The script assumes that you have the following in your `$PATH`:

* [bash](https://www.gnu.org/software/bash/)
* [sed](https://en.wikipedia.org/wiki/Sed)
* [lilypond](http://lilypond.org/)
* [inkscape](https://inkscape.org/)

## legal

eartifacts does not contain any copyrighted audio, but does contain bespoke
rough musical transcriptions &mdash; including lyrics &mdash; of audio whose
copyrights are held by unaffiliated third parties. All use of such musical
transcriptions are legitimate in any legal jurisdiction (e.g. the United
States) that has a notion of &ldquo;fair use&rdquo; that covers one or more of
the following: commentary, criticism, research, scholarship.

Copyrightable (and/or patentable) content that is original to eartifacts is
licensed under the terms of the [GNU Affero General Public License, version
3](https://www.gnu.org/licenses/agpl-3.0.html) (or any later version of the
same license, at the licensee&rsquo;s option).

[![GNU AGPL v3+](https://www.gnu.org/graphics/agplv3-with-text-162x68.png
"GNU AGPL v3+")](https://www.gnu.org/licenses/agpl-3.0.html)

[eartifacts logo](static/img/eartifacts.svg): Ear by Maxim David from the Noun
Project.

[install-zola]: https://www.getzola.org/documentation/getting-started/installation/
