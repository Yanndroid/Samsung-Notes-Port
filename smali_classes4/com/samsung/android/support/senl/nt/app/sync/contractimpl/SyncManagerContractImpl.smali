.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SyncManagerContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestSyncBackground()V
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0}, Ln2/a;->n()V

    return-void
.end method

.method public setSyncEnable(ZZ)V
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ln2/a;->C(ZZ)V

    return-void
.end method
