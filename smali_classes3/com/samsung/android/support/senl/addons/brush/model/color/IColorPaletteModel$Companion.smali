.class public final Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;",
        "",
        "()V",
        "INFO_DEFAULT_LIST",
        "",
        "getINFO_DEFAULT_LIST",
        "()[I",
        "INFO_INDEX_ORDER_LIST",
        "getINFO_INDEX_ORDER_LIST",
        "INFO_MAX_SIZE",
        "",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;

.field private static final INFO_DEFAULT_LIST:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INFO_INDEX_ORDER_LIST:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INFO_MAX_SIZE:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;->INFO_INDEX_ORDER_LIST:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;->INFO_DEFAULT_LIST:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x9
        0x7
        0x4
        0x15
        0x5
        0x3
        0x6
        0x8
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x9
        0x7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINFO_DEFAULT_LIST()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;->INFO_DEFAULT_LIST:[I

    return-object v0
.end method

.method public final getINFO_INDEX_ORDER_LIST()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/color/IColorPaletteModel$Companion;->INFO_INDEX_ORDER_LIST:[I

    return-object v0
.end method
