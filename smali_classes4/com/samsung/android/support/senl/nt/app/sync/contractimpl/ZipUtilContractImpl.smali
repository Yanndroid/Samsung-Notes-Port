.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/ZipUtilContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnzippedFileName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lc3/s;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oldZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/document/util/ZipUtil;->zip(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unzip(Ljava/io/File;Ljava/io/File;ZZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lc3/s;->d(Ljava/io/File;Ljava/io/File;ZZ)V

    return-void
.end method

.method public zip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lc3/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
