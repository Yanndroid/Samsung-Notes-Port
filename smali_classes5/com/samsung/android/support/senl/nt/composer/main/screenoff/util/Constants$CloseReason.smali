.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/Constants$CloseReason;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseReason"
.end annotation


# static fields
.field public static final BUTTON_SAVE:I = 0x4

.field public static final DIALOG_DISCARD:I = 0x2

.field public static final DIALOG_SAVE:I = 0x3

.field public static final EXCEPTION:I = 0x9

.field public static final FOLDED:I = 0x8

.field public static final HOME:I = 0x6

.field public static final INTERRUPT:I = 0x7

.field public static final KEY_BACK:I = 0x1

.field public static final NONE:I = -0x1

.field public static final PEN_ATTACH:I = 0x0

.field public static final PIN_APPLY:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toStringCloseReason(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "NONE"

    goto :goto_0

    :pswitch_1
    const-string p0, "EXCEPTION"

    goto :goto_0

    :pswitch_2
    const-string p0, "FOLDED"

    goto :goto_0

    :pswitch_3
    const-string p0, "INTERRUPT"

    goto :goto_0

    :pswitch_4
    const-string p0, "HOME"

    goto :goto_0

    :pswitch_5
    const-string p0, "PIN_APPLY"

    goto :goto_0

    :pswitch_6
    const-string p0, "BUTTON_SAVE"

    goto :goto_0

    :pswitch_7
    const-string p0, "DIALOG_DISCARD"

    goto :goto_0

    :pswitch_8
    const-string p0, "KEY_BACK"

    goto :goto_0

    :pswitch_9
    const-string p0, "PEN_ATTACH"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
