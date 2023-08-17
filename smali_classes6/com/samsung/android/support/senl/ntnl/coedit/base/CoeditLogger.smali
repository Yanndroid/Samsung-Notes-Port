.class public final Lcom/samsung/android/support/senl/ntnl/coedit/base/CoeditLogger;
.super Lcom/samsung/android/support/senl/ntnl/base/NtnlLogger;
.source "SourceFile"


# static fields
.field private static final BASE_TAG:Ljava/lang/String; = "Coedit$"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/ntnl/base/NtnlLogger;-><init>()V

    return-void
.end method

.method public static createTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Coedit$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
