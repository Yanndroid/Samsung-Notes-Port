.class Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;->updateBadge(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;

    iget v0, v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;->val$viewType:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->updateNewBadge(I)V

    return-void
.end method