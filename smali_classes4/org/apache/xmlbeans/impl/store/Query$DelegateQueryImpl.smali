.class final Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl;
.super Lorg/apache/xmlbeans/impl/store/Query;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelegateQueryImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _xqueryImpl:Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Query;->class$org$apache$xmlbeans$impl$store$Query:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Query"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Query;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Query;->class$org$apache$xmlbeans$impl$store$Query:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl;->$assertionsDisabled:Z

    return-void
.end method

.method private constructor <init>(Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Query;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl;->_xqueryImpl:Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;

    return-void
.end method

.method public static createDelegateCompiledQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/store/Query;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".."

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
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/QueryDelegate;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p1, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl;-><init>(Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;)V

    return-object p1
.end method


# virtual methods
.method public cursorExecute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl;->_xqueryImpl:Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;-><init>(Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->cursorExecute()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    return-object p1
.end method

.method public objectExecute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl;->_xqueryImpl:Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;-><init>(Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->objectExecute()[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1
.end method
