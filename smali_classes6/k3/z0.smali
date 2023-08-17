.class public final synthetic Lk3/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/z0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;

    iput-object p2, p0, Lk3/z0;->b:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    iput-object p3, p0, Lk3/z0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk3/z0;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;

    iget-object v1, p0, Lk3/z0;->b:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    iget-object v2, p0, Lk3/z0;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;->b(Lcom/samsung/android/mcf/continuity/impl/ContinuitySession$5;Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Ljava/lang/String;)V

    return-void
.end method
