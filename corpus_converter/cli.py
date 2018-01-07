import click


@click.command()
@click.argument('corpus_file', type=click.Path(exists=True))
def main(corpus_file):
    """Transform an XML corpus to an XLSX spreadsheet.."""
    click.echo(click.format_filename(corpus_file))
