.class public Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;
.super Landroid/text/method/HideReturnsTransformationMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod$SimpleCharSequence;
    }
.end annotation


# static fields
.field private static mSelf:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/HideReturnsTransformationMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;->mSelf:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;->mSelf:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;->mSelf:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;

    return-object v0
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/text/method/HideReturnsTransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod$SimpleCharSequence;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod$SimpleCharSequence;-><init>(Ljava/lang/CharSequence;)V

    return-object p2
.end method
