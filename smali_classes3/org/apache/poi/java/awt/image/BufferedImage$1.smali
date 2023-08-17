.class final Lorg/apache/poi/java/awt/image/BufferedImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/image/BufferedImage;->isStandard(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$cmClass:Ljava/lang/Class;

.field public final synthetic val$smClass:Ljava/lang/Class;

.field public final synthetic val$wrClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/BufferedImage$1;->val$cmClass:Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/poi/java/awt/image/BufferedImage$1;->val$smClass:Ljava/lang/Class;

    iput-object p3, p0, Lorg/apache/poi/java/awt/image/BufferedImage$1;->val$wrClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 2

    const-class v0, Ljava/lang/System;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage$1;->val$cmClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage$1;->val$smClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/BufferedImage$1;->val$wrClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/BufferedImage$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
