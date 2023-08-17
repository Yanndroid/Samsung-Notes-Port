.class Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeAheadMarker"
.end annotation


# instance fields
.field public after:J

.field public untilFocused:Lorg/apache/poi/java/awt/Component;


# direct methods
.method public constructor <init>(JLorg/apache/poi/java/awt/Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->after:J

    iput-object p3, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->untilFocused:Lorg/apache/poi/java/awt/Component;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Marker after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->after:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/DefaultKeyboardFocusManager$TypeAheadMarker;->untilFocused:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
