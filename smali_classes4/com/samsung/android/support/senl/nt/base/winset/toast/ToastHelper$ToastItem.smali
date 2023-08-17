.class Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastItem"
.end annotation


# instance fields
.field public msg:Ljava/lang/String;

.field public showTime:J

.field public toast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>(Landroid/widget/Toast;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;->toast:Landroid/widget/Toast;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;->msg:Ljava/lang/String;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;->showTime:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/Toast;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/winset/toast/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastItem;-><init>(Landroid/widget/Toast;Ljava/lang/String;)V

    return-void
.end method
