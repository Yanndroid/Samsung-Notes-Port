.class public final enum Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/MultipleGradientPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CycleMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

.field public static final enum NO_CYCLE:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

.field public static final enum REFLECT:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

.field public static final enum REPEAT:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    const-string v1, "NO_CYCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    new-instance v1, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    const-string v3, "REFLECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->REFLECT:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    new-instance v3, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    const-string v5, "REPEAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->REPEAT:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->$VALUES:[Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;
    .locals 1

    const-class v0, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->$VALUES:[Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    invoke-virtual {v0}, [Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    return-object v0
.end method
