.class public abstract Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/XmlCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "XmlBookmark"
.end annotation


# instance fields
.field public _currentMark:Lorg/apache/xmlbeans/XmlCursor$XmlMark;

.field public final _ref:Ljava/lang/ref/Reference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;->_ref:Ljava/lang/ref/Reference;

    return-void
.end method


# virtual methods
.method public final createCursor()Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;->_currentMark:Lorg/apache/xmlbeans/XmlCursor$XmlMark;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor$XmlMark;->createCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final toBookmark(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlCursor;->toBookmark(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;->createCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    :cond_1
    return-object p1
.end method
