.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mColor:I

.field private final mDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->mColor:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->mColor:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->mColor:I

    return-void
.end method
