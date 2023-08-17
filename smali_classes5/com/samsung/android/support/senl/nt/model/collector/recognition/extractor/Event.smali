.class public Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mEventData:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEventData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;->mEventData:Ljava/lang/Object;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setEventData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;->mEventData:Ljava/lang/Object;

    return-void
.end method
