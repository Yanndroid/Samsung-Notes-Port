.class Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceContentInfo"
.end annotation


# instance fields
.field private final mFilePath:Ljava/lang/String;

.field private final mPlayTime:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;->mPlayTime:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;->mPlayTime:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/content/ContentDataCreator$VoiceContentInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method
