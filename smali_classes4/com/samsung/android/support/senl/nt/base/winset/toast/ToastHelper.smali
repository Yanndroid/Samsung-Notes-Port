.class public Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;,
        Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;,
        Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$CustomTypefaceSpan;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0xfa0

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ToastHelper"

.field private static final mHandler:Landroid/os/Handler;

.field private static final mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mToast:Landroid/widget/Toast;

.field private static final rPostShow:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mQueue:Ljava/util/LinkedList;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->rPostShow:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->showDelay()V

    return-void
.end method

.method public static cancelAll()V
    .locals 2

    const-string v0, "cancelAll#"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private static getToast(Landroid/content/Context;Landroid/text/SpannableString;I)Landroid/widget/Toast;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/framework/support/ActivityManagerUtil;->isAppInBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    const-string v0, "QToast"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static makeActionToast(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Toast;
    .locals 9
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x1L
        .end annotation
    .end param

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/CharSequence;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Landroid/view/View$OnClickListener;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    :try_start_0
    const-string v2, "android.widget.Toast"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v8, "semMakeAction"

    invoke-virtual {v2, v8, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    aput-object p3, v0, v6

    aput-object p4, v0, v7

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/Toast;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InvocationTargetException : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :catch_1
    move-exception p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalAccessException : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :catch_2
    move-exception p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NoSuchMethodException : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :catch_3
    move-exception p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ClassNotFoundException : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->log(Ljava/lang/String;)V

    const/4 p3, 0x0

    :goto_1
    if-nez p3, :cond_0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method private static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 4

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$layout;->toast_popup:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$drawable;->toast_popup_bg:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$id;->toast_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/widget/Toast;

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-object p1
.end method

.method private static removeDuplicationMessage(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;->msg:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static show(Landroid/content/Context;IIZ)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    new-instance v7, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;-><init>(Ljava/lang/String;IZZZLcom/samsung/android/support/senl/nt/base/winset/toast/b;)V

    invoke-static {p0, v7}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;)V
    .locals 7

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->message:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$CustomTypefaceSpan;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget v1, p1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->duration:I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->getToast(Landroid/content/Context;Landroid/text/SpannableString;I)Landroid/widget/Toast;

    move-result-object v0

    iget-boolean v1, p1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->isGravityBottom:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x50

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    invoke-virtual {v0, p0, v2, v1}, Landroid/widget/Toast;->setGravity(III)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show# "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->isEncodeLog:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->message:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->log(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    iget-boolean p0, p1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->isCancelable:Z

    if-eqz p0, :cond_4

    const-string p0, "show# mToast is not null and param is cancelable "

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;

    iget-wide v5, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;->showTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xfa0

    cmp-long p0, v3, v5

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "show# call showDelay1"

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->log(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->message:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->removeDuplicationMessage(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->message:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;-><init>(Landroid/widget/Toast;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/winset/toast/a;)V

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->showDelay()V

    return-void

    :cond_3
    :goto_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    goto :goto_2

    :cond_4
    const/16 p0, 0x19

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p0, v3, :cond_5

    const-string p0, "show# call showDelay2"

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->log(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->message:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->removeDuplicationMessage(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->message:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;-><init>(Landroid/widget/Toast;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/winset/toast/a;)V

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->showDelay()V

    return-void

    :cond_5
    :goto_2
    sput-object v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 8

    new-instance v7, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;-><init>(Ljava/lang/String;IZZZLcom/samsung/android/support/senl/nt/base/winset/toast/b;)V

    invoke-static {p0, v7}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;)V

    return-void
.end method

.method public static showActionToast(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x1L
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->makeActionToast(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static declared-synchronized showDelay()V
    .locals 10

    const-class v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDelay# queue size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "showDelay# queue is empty "

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;->showTime:J

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;

    iget-wide v6, v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;->showTime:J

    sub-long/2addr v4, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showDelay# diffTime "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->log(Ljava/lang/String;)V

    const-wide/16 v6, 0xfa0

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->rPostShow:Ljava/lang/Runnable;

    sub-long/2addr v6, v4

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;->showTime:J

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->rPostShow:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static showDirectly(Landroid/content/Context;II)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$CustomTypefaceSpan;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->getToast(Landroid/content/Context;Landroid/text/SpannableString;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
