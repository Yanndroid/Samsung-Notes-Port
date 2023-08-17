.class public Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->w(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$b;->a:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ImportLogic"

    const-string v1, "Unused setSyncEnable"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
