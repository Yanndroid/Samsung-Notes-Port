.class final Lorg/apache/poi/java/awt/AWTEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/AWTEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessControlContext(Lorg/apache/poi/java/awt/AWTEvent;)Ljava/security/AccessControlContext;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object p1

    return-object p1
.end method

.method public getBData(Lorg/apache/poi/java/awt/AWTEvent;)[B
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/AWTEvent;->access$100(Lorg/apache/poi/java/awt/AWTEvent;)[B

    move-result-object p1

    return-object p1
.end method

.method public isSystemGenerated(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/AWTEvent;->access$000(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result p1

    return p1
.end method

.method public setBData(Lorg/apache/poi/java/awt/AWTEvent;[B)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/java/awt/AWTEvent;->access$102(Lorg/apache/poi/java/awt/AWTEvent;[B)[B

    return-void
.end method

.method public setPosted(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->isPosted:Z

    return-void
.end method

.method public setSystemGenerated(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/apache/poi/java/awt/AWTEvent;->access$002(Lorg/apache/poi/java/awt/AWTEvent;Z)Z

    return-void
.end method
