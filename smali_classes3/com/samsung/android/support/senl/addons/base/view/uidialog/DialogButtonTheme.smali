.class public final Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u001f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u000c\u001a\u00020\u0003J\u0006\u0010\r\u001a\u00020\u0003J\u0006\u0010\u000e\u001a\u00020\u0003R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;",
        "",
        "btnTextColor",
        "",
        "(I)V",
        "btnTextColor1",
        "btnTextColor2",
        "btnTextColor3",
        "(III)V",
        "mButton1TextColor",
        "mButton2TextColor",
        "mButton3TextColor",
        "getButton1TextColor",
        "getButton2TextColor",
        "getButton3TextColor",
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


# instance fields
.field private mButton1TextColor:I

.field private mButton2TextColor:I

.field private mButton3TextColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1, p1}, Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;->mButton1TextColor:I

    iput p2, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;->mButton2TextColor:I

    iput p3, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;->mButton3TextColor:I

    return-void
.end method


# virtual methods
.method public final getButton1TextColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;->mButton1TextColor:I

    return v0
.end method

.method public final getButton2TextColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;->mButton2TextColor:I

    return v0
.end method

.method public final getButton3TextColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/uidialog/DialogButtonTheme;->mButton3TextColor:I

    return v0
.end method
