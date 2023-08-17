.class public Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService$LocalBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService$LocalBinder;->this$0:Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService$LocalBinder;->this$0:Lcom/samsung/android/app/notes/sync/contentsharing/service/ShareOldService;

    return-object v0
.end method
