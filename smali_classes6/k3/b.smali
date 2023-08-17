.class public final synthetic Lk3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/b;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    iput p2, p0, Lk3/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk3/b;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    iget v1, p0, Lk3/b;->b:I

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->b(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;I)V

    return-void
.end method
