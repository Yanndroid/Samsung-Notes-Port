.class public final Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Usage: specify a File that the default SnuggleTeX CSS will be written to"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Luk/ac/ed/ph/snuggletex/internal/util/IOUtilities;->ensureFileCreated(Ljava/io/File;)Ljava/io/File;

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->writeDefaultStylesheet(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static readBuiltinInlineCSSProperties()Ljava/util/Properties;
    .locals 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_0
    const-class v1, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "uk/ac/ed/ph/snuggletex/css.properties"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    const-string v1, "Could not load CSS properties file via ClassLoader uk/ac/ed/ph/snuggletex/css.properties"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readInlineCSSProperties(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Ljava/util/Properties;
    .locals 0

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->getInlineCSSProperties()Ljava/util/Properties;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->readBuiltinInlineCSSProperties()Ljava/util/Properties;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static writeDefaultStylesheet()Ljava/lang/String;
    .locals 1

    invoke-static {}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->readBuiltinInlineCSSProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->writeStylesheet(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeDefaultStylesheet(Ljava/io/OutputStream;)V
    .locals 1

    invoke-static {}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->readBuiltinInlineCSSProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0, p0}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->writeStylesheet(Ljava/util/Properties;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static writeStylesheet(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->writeStylesheet(Ljava/util/Properties;Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeStylesheet(Ljava/util/Properties;Ljava/io/OutputStream;)V
    .locals 2

    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-static {p0, v0}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->writeStylesheet(Ljava/util/Properties;Ljava/io/Writer;)V

    return-void
.end method

.method public static writeStylesheet(Ljava/util/Properties;Ljava/io/Writer;)V
    .locals 4

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string p1, "/* SnuggleTeX CSS File (autogenerated) */"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " {\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "(?!;)$"

    const-string v3, ";"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ";\\s*(?=.)"

    const-string v3, ";\n  "

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string p1, "}\n"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public static writeStylesheet(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;Ljava/io/OutputStream;)V
    .locals 0

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->getInlineCSSProperties()Ljava/util/Properties;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->readBuiltinInlineCSSProperties()Ljava/util/Properties;

    move-result-object p0

    :cond_0
    invoke-static {p0, p1}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->writeStylesheet(Ljava/util/Properties;Ljava/io/OutputStream;)V

    return-void
.end method
