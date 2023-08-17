.class Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/updater/UpdateSettingsBadgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

.field public final synthetic val$viewType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;->val$viewType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBadge(Z)V
    .locals 1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
