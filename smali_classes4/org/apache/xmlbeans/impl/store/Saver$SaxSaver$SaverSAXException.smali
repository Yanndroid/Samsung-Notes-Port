.class Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaverSAXException"
.end annotation


# instance fields
.field public _saxException:Lorg/xml/sax/SAXException;

.field public final synthetic this$0:Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;Lorg/xml/sax/SAXException;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;->this$0:Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;->_saxException:Lorg/xml/sax/SAXException;

    return-void
.end method
