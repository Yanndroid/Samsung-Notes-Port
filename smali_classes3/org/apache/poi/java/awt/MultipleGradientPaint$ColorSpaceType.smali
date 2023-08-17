.class public final enum Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/MultipleGradientPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorSpaceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

.field public static final enum LINEAR_RGB:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

.field public static final enum SRGB:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    new-instance v1, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    const-string v3, "LINEAR_RGB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;->LINEAR_RGB:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;->$VALUES:[Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;
    .locals 1

    const-class v0, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;->$VALUES:[Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    invoke-virtual {v0}, [Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    return-object v0
.end method
