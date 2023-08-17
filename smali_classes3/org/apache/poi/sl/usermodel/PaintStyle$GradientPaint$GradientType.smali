.class public final enum Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GradientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

.field public static final enum circular:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

.field public static final enum linear:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

.field public static final enum shape:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    const-string v1, "linear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->linear:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    new-instance v1, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    const-string v3, "circular"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->circular:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    new-instance v3, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    const-string/jumbo v5, "shape"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->shape:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->$VALUES:[Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->$VALUES:[Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    return-object v0
.end method
