.class Lcom/google/android/material/navigation/NavigationBarPresenter$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/navigation/NavigationBarPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarPresenter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$1;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$1;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-static {p1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->access$000(Lcom/google/android/material/navigation/NavigationBarPresenter;)V

    :cond_0
    return-void
.end method
