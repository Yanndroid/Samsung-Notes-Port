.class public interface abstract Lx/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/d$c;,
        Lx/d$a;,
        Lx/d$b;
    }
.end annotation


# virtual methods
.method public abstract LMemoConvertToSDoc(Ljava/lang/Object;Ljava/lang/String;Lx/d$a;)Z
.end method

.method public abstract NMemoConvertToSDoc(Ljava/lang/Object;ZLjava/lang/String;I)Z
.end method

.method public abstract NMemoCoreConvertToSDoc(Ljava/lang/Object;ZLjava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract NMemoGetMemoMetaData(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract QMemoConvertToSDoc(Ljava/lang/Object;Ljava/lang/String;Lx/d$c;)Z
.end method

.method public abstract TMemoConvertToSDoc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lx/d$b;)Z
.end method

.method public abstract TMemoGetMemoMetaDataArray(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createLMemoConverter()Ljava/lang/Object;
.end method

.method public abstract createNMemoConverter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract createQMemoConverter()Ljava/lang/Object;
.end method

.method public abstract createSNBConverter()Ljava/lang/Object;
.end method

.method public abstract createSPDConverter()Ljava/lang/Object;
.end method

.method public abstract createScrapBookConverter()Ljava/lang/Object;
.end method

.method public abstract createTMemoConverter()Ljava/lang/Object;
.end method

.method public abstract getNMemoValueConvertModeNormal()I
.end method

.method public abstract getSnbConvertModeNormal()I
.end method

.method public abstract getSpdConvertModeNormal()I
.end method

.method public abstract getSpdLastModifiedTime(Ljava/lang/Object;Ljava/lang/String;)J
.end method

.method public abstract isSnbAlreadyConverted(Ljava/lang/Object;Ljava/lang/String;)Z
.end method

.method public abstract isSpdAlreadyConverted(Ljava/lang/Object;Ljava/lang/String;)Z
.end method

.method public abstract jsonConverterConvertToSDoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract scrapBookConverterConvertToSDoc(Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract snbConvertToSDoc(Ljava/lang/Object;Ljava/lang/String;I)Z
.end method

.method public abstract spdConvertToSDoc(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
.end method
