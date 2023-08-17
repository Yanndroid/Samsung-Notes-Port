.class public Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;
.super Landroid/text/method/PasswordTransformationMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod$PasswordCharSequence;
    }
.end annotation


# static fields
.field private static mSelf:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;->mSelf:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;->mSelf:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;->mSelf:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;

    return-object v0
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/text/method/PasswordTransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod$PasswordCharSequence;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod$PasswordCharSequence;-><init>(Ljava/lang/CharSequence;)V

    return-object p2
.end method
