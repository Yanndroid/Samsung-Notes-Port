.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttimenodelist0258type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTimeNodeList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAnim()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateBehavior;
.end method

.method public abstract addNewAnimClr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;
.end method

.method public abstract addNewAnimEffect()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;
.end method

.method public abstract addNewAnimMotion()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;
.end method

.method public abstract addNewAnimRot()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;
.end method

.method public abstract addNewAnimScale()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateScaleBehavior;
.end method

.method public abstract addNewAudio()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;
.end method

.method public abstract addNewCmd()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommandBehavior;
.end method

.method public abstract addNewExcl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeExclusive;
.end method

.method public abstract addNewPar()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;
.end method

.method public abstract addNewSeq()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;
.end method

.method public abstract addNewSet()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSetBehavior;
.end method

.method public abstract addNewVideo()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;
.end method

.method public abstract getAnimArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateBehavior;
.end method

.method public abstract getAnimArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateBehavior;
.end method

.method public abstract getAnimClrArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;
.end method

.method public abstract getAnimClrArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;
.end method

.method public abstract getAnimClrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnimEffectArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;
.end method

.method public abstract getAnimEffectArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;
.end method

.method public abstract getAnimEffectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnimList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateBehavior;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnimMotionArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;
.end method

.method public abstract getAnimMotionArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;
.end method

.method public abstract getAnimMotionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnimRotArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;
.end method

.method public abstract getAnimRotArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;
.end method

.method public abstract getAnimRotList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnimScaleArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateScaleBehavior;
.end method

.method public abstract getAnimScaleArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateScaleBehavior;
.end method

.method public abstract getAnimScaleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateScaleBehavior;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAudioArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;
.end method

.method public abstract getAudioArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;
.end method

.method public abstract getAudioList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCmdArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommandBehavior;
.end method

.method public abstract getCmdArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommandBehavior;
.end method

.method public abstract getCmdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommandBehavior;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExclArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeExclusive;
.end method

.method public abstract getExclArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeExclusive;
.end method

.method public abstract getExclList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeExclusive;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;
.end method

.method public abstract getParArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;
.end method

.method public abstract getParList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSeqArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;
.end method

.method public abstract getSeqArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;
.end method

.method public abstract getSeqList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSetArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSetBehavior;
.end method

.method public abstract getSetArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSetBehavior;
.end method

.method public abstract getSetList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSetBehavior;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;
.end method

.method public abstract getVideoArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;
.end method

.method public abstract getVideoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewAnim(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateBehavior;
.end method

.method public abstract insertNewAnimClr(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;
.end method

.method public abstract insertNewAnimEffect(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;
.end method

.method public abstract insertNewAnimMotion(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;
.end method

.method public abstract insertNewAnimRot(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;
.end method

.method public abstract insertNewAnimScale(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateScaleBehavior;
.end method

.method public abstract insertNewAudio(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;
.end method

.method public abstract insertNewCmd(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommandBehavior;
.end method

.method public abstract insertNewExcl(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeExclusive;
.end method

.method public abstract insertNewPar(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;
.end method

.method public abstract insertNewSeq(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;
.end method

.method public abstract insertNewSet(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSetBehavior;
.end method

.method public abstract insertNewVideo(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;
.end method

.method public abstract removeAnim(I)V
.end method

.method public abstract removeAnimClr(I)V
.end method

.method public abstract removeAnimEffect(I)V
.end method

.method public abstract removeAnimMotion(I)V
.end method

.method public abstract removeAnimRot(I)V
.end method

.method public abstract removeAnimScale(I)V
.end method

.method public abstract removeAudio(I)V
.end method

.method public abstract removeCmd(I)V
.end method

.method public abstract removeExcl(I)V
.end method

.method public abstract removePar(I)V
.end method

.method public abstract removeSeq(I)V
.end method

.method public abstract removeSet(I)V
.end method

.method public abstract removeVideo(I)V
.end method

.method public abstract setAnimArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateBehavior;)V
.end method

.method public abstract setAnimArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateBehavior;)V
.end method

.method public abstract setAnimClrArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;)V
.end method

.method public abstract setAnimClrArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateColorBehavior;)V
.end method

.method public abstract setAnimEffectArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;)V
.end method

.method public abstract setAnimEffectArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateEffectBehavior;)V
.end method

.method public abstract setAnimMotionArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;)V
.end method

.method public abstract setAnimMotionArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateMotionBehavior;)V
.end method

.method public abstract setAnimRotArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;)V
.end method

.method public abstract setAnimRotArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;)V
.end method

.method public abstract setAnimScaleArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateScaleBehavior;)V
.end method

.method public abstract setAnimScaleArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateScaleBehavior;)V
.end method

.method public abstract setAudioArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;)V
.end method

.method public abstract setAudioArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeAudio;)V
.end method

.method public abstract setCmdArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommandBehavior;)V
.end method

.method public abstract setCmdArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLCommandBehavior;)V
.end method

.method public abstract setExclArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeExclusive;)V
.end method

.method public abstract setExclArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeExclusive;)V
.end method

.method public abstract setParArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;)V
.end method

.method public abstract setParArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeParallel;)V
.end method

.method public abstract setSeqArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;)V
.end method

.method public abstract setSeqArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeNodeSequence;)V
.end method

.method public abstract setSetArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSetBehavior;)V
.end method

.method public abstract setSetArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSetBehavior;)V
.end method

.method public abstract setVideoArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;)V
.end method

.method public abstract setVideoArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLMediaNodeVideo;)V
.end method

.method public abstract sizeOfAnimArray()I
.end method

.method public abstract sizeOfAnimClrArray()I
.end method

.method public abstract sizeOfAnimEffectArray()I
.end method

.method public abstract sizeOfAnimMotionArray()I
.end method

.method public abstract sizeOfAnimRotArray()I
.end method

.method public abstract sizeOfAnimScaleArray()I
.end method

.method public abstract sizeOfAudioArray()I
.end method

.method public abstract sizeOfCmdArray()I
.end method

.method public abstract sizeOfExclArray()I
.end method

.method public abstract sizeOfParArray()I
.end method

.method public abstract sizeOfSeqArray()I
.end method

.method public abstract sizeOfSetArray()I
.end method

.method public abstract sizeOfVideoArray()I
.end method
