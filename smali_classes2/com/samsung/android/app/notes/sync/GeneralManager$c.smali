.class public Lcom/samsung/android/app/notes/sync/GeneralManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/a;


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

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$c;->a:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPushMessageReceived() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeneralManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln2/a;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
