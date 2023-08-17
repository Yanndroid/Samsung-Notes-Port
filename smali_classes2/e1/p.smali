.class public Le1/p;
.super Le1/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1

    invoke-direct {p0, p1}, Le1/o;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    iput-object p1, p0, Le1/o;->b:Ljava/io/StringWriter;

    iget-object v0, p0, Le1/o;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    iget-object v0, p0, Le1/o;->a:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method
