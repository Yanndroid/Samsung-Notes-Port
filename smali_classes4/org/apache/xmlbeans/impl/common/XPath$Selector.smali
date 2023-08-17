.class final Lorg/apache/xmlbeans/impl/common/XPath$Selector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/common/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Selector"
.end annotation


# instance fields
.field public final _paths:[Lorg/apache/xmlbeans/impl/common/XPath$Step;


# direct methods
.method public constructor <init>([Lorg/apache/xmlbeans/impl/common/XPath$Step;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/XPath$Selector;->_paths:[Lorg/apache/xmlbeans/impl/common/XPath$Step;

    return-void
.end method
