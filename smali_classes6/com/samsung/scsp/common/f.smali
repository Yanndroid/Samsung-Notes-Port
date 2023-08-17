.class public final synthetic Lcom/samsung/scsp/common/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/common/PreferenceItem;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/common/PreferenceItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/common/f;->a:Lcom/samsung/scsp/common/PreferenceItem;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/common/f;->a:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-static {v0}, Lcom/samsung/scsp/common/PreferenceItem;->a(Lcom/samsung/scsp/common/PreferenceItem;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
