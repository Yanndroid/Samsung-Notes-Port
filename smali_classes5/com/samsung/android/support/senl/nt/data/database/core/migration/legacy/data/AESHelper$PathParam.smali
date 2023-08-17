.class public Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$PathParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathParam"
.end annotation


# instance fields
.field public inputFile:Ljava/io/File;

.field public key:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$PathParam;->inputFile:Ljava/io/File;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$PathParam;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/data/AESHelper$PathParam;->key:Ljava/lang/String;

    return-void
.end method
