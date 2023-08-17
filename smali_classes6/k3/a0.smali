.class public final synthetic Lk3/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/a0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    iput p2, p0, Lk3/a0;->b:I

    iput p3, p0, Lk3/a0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk3/a0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    iget v1, p0, Lk3/a0;->b:I

    iget v2, p0, Lk3/a0;->c:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->e(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;II)V

    return-void
.end method
