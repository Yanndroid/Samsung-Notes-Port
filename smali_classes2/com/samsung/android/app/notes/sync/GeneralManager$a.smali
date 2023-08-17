.class public Lcom/samsung/android/app/notes/sync/GeneralManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/GeneralManager;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/GeneralManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/GeneralManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$a;->b:Lcom/samsung/android/app/notes/sync/GeneralManager;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ln2/a;->o(Ljava/lang/String;)V

    return-void
.end method
