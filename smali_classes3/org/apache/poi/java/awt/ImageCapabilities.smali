.class public Lorg/apache/poi/java/awt/ImageCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private accelerated:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/ImageCapabilities;->accelerated:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public isAccelerated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/ImageCapabilities;->accelerated:Z

    return v0
.end method

.method public isTrueVolatile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
