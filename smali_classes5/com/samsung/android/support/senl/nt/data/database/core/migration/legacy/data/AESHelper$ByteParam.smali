.class public Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteParam"
.end annotation


# instance fields
.field public c:[B

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;->c:[B

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$ByteParam;->key:Ljava/lang/String;

    return-void
.end method
