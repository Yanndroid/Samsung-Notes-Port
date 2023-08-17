.class public Lcom/samsung/android/app/notes/sync/GeneralManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/GeneralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/GeneralManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/GeneralManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$b;->a:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLoginInfoReceived(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$b;->a:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/GeneralManager;->o()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$b;->a:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/GeneralManager;->b(Lcom/samsung/android/app/notes/sync/GeneralManager;)V

    :goto_0
    return-void
.end method
