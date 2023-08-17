.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BACKSPACE:I = 0x4

.field public static final EMOJI:I = 0x20

.field public static final ENTER:I = 0x10

.field public static final KEYBOARD:I = 0x8

.field public static final KEYBOARD_BUTTONS:[I

.field public static final KEYBOARD_FUNCTION_BUTTONS:[I

.field public static final NONE:I = 0x0

.field public static final SETTING:I = 0x1

.field public static final SPACE:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuConstants;->KEYBOARD_FUNCTION_BUTTONS:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuConstants;->KEYBOARD_BUTTONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x4
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
