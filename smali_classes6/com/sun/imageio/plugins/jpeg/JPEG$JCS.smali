.class public Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JPEG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCS"
.end annotation


# static fields
.field private static YCC:Lorg/apache/poi/java/awt/color/ColorSpace;

.field public static final sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

.field private static yccInited:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    const/4 v0, 0x0

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->YCC:Lorg/apache/poi/java/awt/color/ColorSpace;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->yccInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getYCC()Lorg/apache/poi/java/awt/color/ColorSpace;
    .locals 2

    sget-boolean v0, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->yccInited:Z

    if-nez v0, :cond_0

    const/16 v0, 0x3ea

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->YCC:Lorg/apache/poi/java/awt/color/ColorSpace;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-boolean v1, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->yccInited:Z

    throw v0

    :catch_0
    :goto_0
    sput-boolean v1, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->yccInited:Z

    :cond_0
    sget-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->YCC:Lorg/apache/poi/java/awt/color/ColorSpace;

    return-object v0
.end method
