.class final Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl;
.super Lorg/apache/xmlbeans/impl/store/Path;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelegatePathImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _xpathImpl:Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->class$org$apache$xmlbeans$impl$store$Path:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Path"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->class$org$apache$xmlbeans$impl$store$Path:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl;->$assertionsDisabled:Z

    return-void
.end method

.method private constructor <init>(Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Path;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl;->_xpathImpl:Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-string v0, "$"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/PathDelegate;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p2, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl;-><init>(Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public execute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Path$PathEngine;
    .locals 1

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl;->_xpathImpl:Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;

    invoke-direct {p2, v0, p1}, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;-><init>(Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-object p2
.end method
