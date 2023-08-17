.class public final synthetic Lk3/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/b0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    iput p2, p0, Lk3/b0;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lk3/b0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;

    iget v1, p0, Lk3/b0;->b:I

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->d(Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
