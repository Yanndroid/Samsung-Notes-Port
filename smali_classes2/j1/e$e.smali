.class public Lj1/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic b:Lj1/e;


# direct methods
.method public constructor <init>(Lj1/e;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lj1/e$e;->b:Lj1/e;

    iput-object p2, p0, Lj1/e$e;->a:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/c;)V
    .locals 2

    const-string p1, "UpdateNote"

    const-string v0, "result updateNoteExtension"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lj1/e$e;->b:Lj1/e;

    iget-object v0, p0, Lj1/e$e;->a:Ljava/util/concurrent/CompletableFuture;

    const-string v1, "finished update Note Extension."

    invoke-static {p1, v0, v1}, Lj1/e;->c(Lj1/e;Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    return-void
.end method
