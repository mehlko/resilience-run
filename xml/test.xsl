<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes" />

	<xsl:key name="concept" match="/cs/c" use="@t" />


	<xsl:template match="/">
		<html>
			<body>
				<h1>Hallo</h1>
				<xsl:for-each
					select="/cs/c[generate-id() = generate-id(key('concept',@t)[1])]">
					<div>
						<h1>

							<xsl:value-of select="@t"></xsl:value-of>

						</h1>
						<xsl:for-each select="/cs/c[@t=current()/@t]">
							<div>
								<xsl:value-of select="@id" />
							</div>
						</xsl:for-each>

					</div>
				</xsl:for-each>
				<!-- <xsl:apply-templates /> -->
			</body>
		</html>
	</xsl:template>

	<xsl:template match="c">
	</xsl:template>

</xsl:stylesheet>