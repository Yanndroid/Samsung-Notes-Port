.class synthetic Lorg/apache/poi/sl/draw/DrawPaint$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/DrawPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$GradientPaint$GradientType:[I

.field public static final synthetic $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->values()[Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$GradientPaint$GradientType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->linear:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$GradientPaint$GradientType:[I

    sget-object v3, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->circular:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$GradientPaint$GradientType:[I

    sget-object v4, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->shape:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->values()[Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier:[I

    :try_start_3
    sget-object v4, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier:[I

    sget-object v3, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->DARKEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier:[I

    sget-object v1, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lorg/apache/poi/sl/draw/DrawPaint$2;->$SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$PaintModifier:[I

    sget-object v1, Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;->LIGHTEN_LESS:Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
