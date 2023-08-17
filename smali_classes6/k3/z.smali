.class public final synthetic Lk3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/z;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lk3/z;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->b(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;)V

    return-void
.end method
