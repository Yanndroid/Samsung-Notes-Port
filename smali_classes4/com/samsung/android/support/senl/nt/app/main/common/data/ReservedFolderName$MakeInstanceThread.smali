.class Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName$MakeInstanceThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakeInstanceThread"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName$MakeInstanceThread;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ReservedFolderName"

    const-string v1, "MakeInstanceThread start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->a()Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName$MakeInstanceThread;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/data/a;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->b(Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;)V

    :cond_0
    const-string v1, "MakeInstanceThread end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
