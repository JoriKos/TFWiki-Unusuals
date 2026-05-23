


::SpawnParticle <- function(entity, name, attach_name, attach_type)
{
    ParticleSpawner <- Entities.CreateByClassname("trigger_particle")
    ParticleSpawner.KeyValueFromInt("spawnflags", 64)

	NetProps.SetPropString(ParticleSpawner, "m_iszParticleName", name)
	NetProps.SetPropString(ParticleSpawner, "m_iszAttachmentName", attach_name)
	NetProps.SetPropInt(ParticleSpawner, "m_nAttachType", attach_type)
	ParticleSpawner.AcceptInput("StartTouch", "", entity, entity)
}