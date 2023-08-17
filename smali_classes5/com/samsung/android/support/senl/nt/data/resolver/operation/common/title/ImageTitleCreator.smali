.class public Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/ImageTitleCreator;
.super Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator<",
        "Lcom/samsung/android/sdk/pen/document/SpenObjectImage;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ImageTitleCreator"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/ImageTitleCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/res/Resources;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;->needToCreateTitle(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;->hasObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z

    move-result p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/ImageTitleCreator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply, find object : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->IMAGE:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
