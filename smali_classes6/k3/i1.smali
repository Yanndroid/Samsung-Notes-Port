.class public final synthetic Lk3/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/i1;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lk3/i1;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession;->close()V

    return-void
.end method
